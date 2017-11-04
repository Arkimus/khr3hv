# Python Wrapper using Cython


import ckondo


# Wrapper class
cdef class pykondo:
    cdef Kondo* C_Kondo
    cdef free_on_dealloc

    def __cinit__(self):
        self.C_Kondo = new Kondo()

        # The robots has initially 17 servos/DoFs.
        # However, 5 dummy servos can be replaced by real servos.
        self.joints_idx = {'Neck': 0,
                           # Right arm
                           'RShoulderPitch': 1,
                           'RShoulderRoll': 2,
                           'RUpperArmYaw': None,
                           'RElbow': 4,
                           # Left arm
                           'LShoulderPitch': 5,
                           'LShoulderRoll': 6,
                           'LUpperArmYaw': None, 
                           'LElbow': 8,
                           # Pelvis
                           'PelvisYaw': None,
                           # Right Leg
                           'RHipYaw': None,
                           'RHipRoll': 11,
                           'RHipPitch': 12,
                           'RKnee': 13,
                           'RAnkPitch': 14,
                           'RAnkYaw': 15,
                           # Left Leg
                           'LHipYaw': None,
                           'LHipRoll': 17,
                           'LHipPitch': 18,
                           'LKnee': 19,
                           'LAnkPitch': 20,
                           'LAnkYaw': 21}

        # Sensors
        self.camera = None
        self.imu = None
        self.LFoot = None
        self.RFoot = None
        self.microphone = None

        # Interfaces
        self.speaker = None
        self.screen = None


    def __dealloc__(self):
        del self.C_Kondo

    
    ## Set
    def set_angle(self, UINT jointIndex, double angleInDegree, double fractionMaxSpeed):
        """
        Set the specified angle (in degree) to the given single servo motor.
        """
        return self.C_Kondo.kondo_set_angle(jointIndex, angleInDegree, fractionMaxSpeed)

    def set_angles(self, jointIndices, anglesInDegree, double fractionMaxSpeed):
        """
        Set the specified angles (in degree) to the given multiple servo motors.
        """
        return self.C_Kondo.kondo_set_angles(jointIndices, anglesInDegree, fractionMax)

    
    ## init
    def init(self):
        """
        Open/Initialize the KondoInstance.
        Uses the default parameters for baud, vid, and pid.
        This consists mainly of initializing and opening the USB adapter.
        
        Return:
        Returns 0 if successful, error code otherwise.
        """
        return self.C_Kondo.kondo_init()

    def init_custom(int baud, int vid, int pid, int interface):
        """
        Open/Initialize the KondoInstance.
        Accepts baud rate, vid, pid, and interface arguments.
        This consists mainly of initializing and opening the USB adapter.
        
        Parameters:
        baud: the baud rate - e.g. 115200
        vid: the USB vendor ID. See rcb4.h for some examples.
        pid: the USB product ID. See rcb4.h for some examples.
        interface: defined in ftdi.h. possible values: 
            INTERFACE_ANY, INTERFACE_A, INTERFACE_B, INTERFACE_C, INTERFACE_D
        
        Return:
        Returns 0 if successful, error code otherwise.
        """
        return self.C_Kondo.kondo_init_custom(baud, vid, pid, interface)

    def close(self):
        """
        Close/Deinitialize the KondoInstance.
        This consists mainly of closing the USB adapter.
        
        Returns 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_close()


    ## rcb4 commands
    def move(UINT num):
        """

        """
        return self.C_Kondo.kondo_move(num)

    def ack():
        """
        ACK: Send a ping to the robot and get a response.
        
        Returns < 0: error
        Returns 0: OK
        """
        return self.C_Kondo.kondo_ack()

    def get_options():
        """
        Get options from RCB-4
        
        Returns < 0: error
        Returns 0: OK
        """
        return self.C_Kondo.kondo_get_options()
    
    def play_motion(UINT num, long max_wait):
        """
        Play a motion with given slot number.
        Blocks (does not return) until timeout time has elapsed or motion is done.
        So if you want to run a motion without blocking, just use max_wait = 0.

        Returns < 0: Error
        Returns 0: All good
        """
        return self.C_Kondo.kondo_play_motion(num, max_wait)

    def stop_motion():
        """
        Stop the currently playing motion, freezing the robot in place.
        
        Returns < 0: error
        Returns 0: all good
        """
        return self.C_Kondo.kondo_stop_motion()

    def krc3_buttons(UINT cc, UCHAR a1, UCHAR a2, UCHAR a3, UCHAR a4):
        """
        Emulate a KRC-3 button state change
        See button codes in libkondo_rcb4.h
        
        Parameters:
        cc: (bit field) the buttons activated, 0 = released, 1 = pressed
        a1 - a4: analog input 1 - 4
        
        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_krc3_buttons(cc, a1, a2, a3, a4)

    def read_analog(int * result, UINT num):
        """
        Read an analog value (Battery, AD1, AD2, AD3, etc)
        Analog number 0 is the battery voltage.
        Analog numbers 1-11 are the analog inputs.
        Side effect: The analog value is read into 'result'.
        
        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_read_analog(result, num)

    def set_pio_direction(UINT bitset):
        """
        Set the direction for the digital (PIO) ports.
        
        Parameters:
        bitfield: 9-bits where 1=Output, 0=Input. PIO1 is bit 0 ~ PIO10 is bit 9.
        NOTE: At power-on, the PIO direction defaults to 1 (Output) for all ports.
        See kondo_get_pio_direction to get direction (input / output) of the ports.
        
        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_set_pio_direction(bitset)

    def get_pio_direction(UINT * bitset):
        """
        Get the direction for the digital ports.
        Side effect: The direction for all the ports will be returned in bitfield.
        The format of result is a 9-bits field, lowest order bit is the value of
        PIO1; 1=Output, 0=Input
        NOTE: At power-on, the PIO direction defaults to 1 (Output) for all ports.
        See kondo_set_pio_direction() to set the direction of the PIO ports.
        
        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_get_pio_direction(bitset)

    def read_pio(UINT * result):
        """
        Read digital values (PIO1 to PIO10).
        The 'result' will be set to a 10-bit field of the digital values.
        The format of result will be 10-bits, lowest order bit is the value of PIO1

        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_read_pio(result)

    def write_pio(UINT bitset):
        """
        Write to the PIO port.

        Parameters:
        bitfield: 9-bits where PIO1 is bit 0 (low order bit); PIO10 is bit 9.
        NOTE: At power-on, the PIO direction defaults to 1 (Output) for all ports.
        You will need to set the PIO direction to Output for the ports you would
        like to write values to.
        
        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_write_pio(bitset)

    def set_counter(UINT num, UCHAR val):
        """
        Set the counter value.

        Parameters:
        num: the counter to set (0 to 10)
        val: the value to set the counter to
        
        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_set_counter(num, val)

    def get_counter(UCHAR * result, UINT num):
        """
        Read a counter value.
        
        Parameters:
        num: the counter to read
        Side effect: The counter value is read into 'result'.
        
        Returns: 0 if successful, < 0 if error.
        """
        return self.C_Kondo.kondo_get_counter(result, num)

    def send_ics_pos(UCHAR servos[5], UINT frame):
        """
        Send an ICS pos frame to all servos selected in the bitfield.
        
        Parameters:
        servos[5]: a bit field of all the servos to send to.
        frame: two-byte ICS frame to send
        free position is 0x8000 (32768)
        hold position is 0x7fff (32767)
        center position is 0x1d4c (7500)
        
        Returns: < 0 if error, 0 if OK.
        """
        return self.C_Kondo.kondo_send_ics_pos(servos[5], frame)
    
    def get_servo_data(UINT servo_idx, UINT offset):
        """
        Get the given 2-byte field of data from a servo.
        
        Returns: < 0 if error, or pos >= 0;
        """
        return self.C_Kondo.kondo_get_servo_data(servo_idx, offset)
       
    def get_servo_trim(UINT servo_idx):
        """
        Get the trim of the selected servo.
        
        Returns: < 0 if error, or pos >= 0.
        """
        return self.C_Kondo.kondo_get_servo_trim(servo_idx)
        
    def get_servo_setpos(UINT servo_idx):
        """
        Get the set pos of the selected servo.
        
        Returns: < 0 if error, or pos >= 0.
        """
        return self.C_Kondo.kondo_get_servo_setpos(servo_idx)
        
    def get_servo_pos(UINT servo_idx):
        """
        Get the position of the selected servo (single).
        
        Returns: < 0 if error, or pos >= 0;
        """
        return self.C_Kondo.kondo_get_servo_pos(servo_idx)
        
    def get_servo_id(UINT servo_idx):
        """
        Get the ID of the selected servo.
        
        Returns: < 0 if error, or pos >= 0.
        """
        return self.C_Kondo.kondo_get_servo_id(servo_idx)

    
    ## basic communication
    def write(int n):
        """
        Write n bytes from the swap to the Kondo.
        
        Parameter:
        n: the number of bytes to write.

        Return:
        Returns >0 number of bytes written, < 0 if error
        """
        return self.C_Kondo.kondo_write(n)

    def read(int n):
        """
        Read n bytes from the RCB-4. Reads immediately from the serial buffer.
        See kondo_read_timeout for a version that blocks waiting for the data.
        
        Parameter:
        n: the number of bytes to read.

        Return:
        Returns < 0: error
        Returns >= 0: number of bytes read
        """
        return self.C_Kondo.kondo_read(n)

    def read_timeout(int n, long timeout):
        """
        Read n bytes from the RCB-4, waiting for at most timeout usecs for n bytes.
        Performs this by continuously polling the serial buffer until either
        all of the bytes are read or the timeout has been reached.
        
        Return:
        Returns < 0: error
        Returns >= 0: number of bytes read
        """
        return self.C_Kondo.kondo_read_timeout(n, timeout)

    def purge():
        """
        Purge the TX and RX serial buffers.
        
        Return:
        Returns 0 if successful, < 0 if error.
        """
        return self.C_Kondo.purge()
    
    def trx(int out_bytes, int in_bytes):
        """
        Transaction template: Purge, then send out_bytes, then receive in_bytes.
        
        Return:
        Returns < 0: error
        Returns >= 0: number of bytes read
        """
        return self.C_Kondo.kondo_trx(out_bytes, in_bytes)


    ## utility
    def checksum(int n):
        """
        Compute checksum for n bytes (swap[0] to swap[n-1]).
        
        Return:
        Returns checksum value.
        """
        return self.C_Kondo.kondo_checksum(n)

    def verify_checksum(int n):
        """
        Verify checksum for n bytes (swap[0] to swap[n-1]).
        
        Return:
        Returns 0 if correct, < 0 if incorrect
        """
        return self.C_Kondo.kondo_verify_checksum(n)

    def load_asciihex(const char * hex):
        """
        Load the given data (from ASCII hex string) into swap.
        
        Return:
        Returns number of bytes read into swap
        """
        return self.C_Kondo.kondo_load_asciihex(hex)